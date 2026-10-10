.class Lcom/imaginstudio/imagetools/pixellab/controls/TextTab$1;
.super Ljava/lang/Object;
.source "TextTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->addClickListenersTo(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

.field final synthetic val$childOptionUi:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab$1;->val$childOptionUi:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 59
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab$1;->val$childOptionUi:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->actionDo:I

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    return-void

    const/4 v0, 0x2
.end method
