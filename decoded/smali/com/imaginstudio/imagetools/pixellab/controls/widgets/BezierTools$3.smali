.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;
.super Ljava/lang/Object;
.source "BezierTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

.field final synthetic val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 178
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    .line 181
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->commitTransform(Z)V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method
