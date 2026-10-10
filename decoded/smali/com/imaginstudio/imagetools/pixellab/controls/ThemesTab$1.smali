.class Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;
.super Ljava/lang/Object;
.source "ThemesTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

.field final synthetic val$browseButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->val$browseButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 64
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->val$browseButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->actionDo:I

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    return-void

    const/4 v1, 0x1
.end method
