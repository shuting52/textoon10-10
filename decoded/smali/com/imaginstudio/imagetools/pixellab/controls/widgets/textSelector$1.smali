.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$1;
.super Ljava/lang/Object;
.source "textSelector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateText(Ljava/lang/String;)V
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

    .line 135
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 138
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    return-void

    const/4 v1, 0x1
.end method
