.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;
.super Ljava/lang/Object;
.source "removeColorTools.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;


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

    .line 56
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorDisplayChanged(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 59
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;->changedColor(I)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method
