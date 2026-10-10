.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$childOptionUi:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

.field final synthetic val$type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V
    .locals 0

    .line 3222
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->val$type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->val$childOptionUi:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3226
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    .line 3227
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3229
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    .line 3230
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3232
    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 3233
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3235
    const/4 v3, 0x3

    :cond_2
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x2

    .line 3236
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3238
    const/4 v3, 0x0

    :cond_3
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->val$type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p1, v0, :cond_4

    const/4 v3, 0x2

    .line 3239
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getSelectedReferences()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    const/4 v3, 0x0

    :cond_4
    const/4 v3, 0x1

    const/4 p1, 0x0

    .line 3241
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->val$childOptionUi:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->actionDo:I

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;->val$type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0, v1, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    return-void

    const/4 v1, 0x3
.end method
