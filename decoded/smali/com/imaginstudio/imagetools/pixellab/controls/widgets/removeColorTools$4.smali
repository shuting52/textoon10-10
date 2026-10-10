.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;
.super Ljava/lang/Object;
.source "removeColorTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 84
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    move-result-object p1

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;->requestAdd()V

    :cond_0
    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method
