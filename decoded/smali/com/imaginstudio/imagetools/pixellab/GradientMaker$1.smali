.class Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;
.super Ljava/lang/Object;
.source "GradientMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

.field final synthetic val$preset:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GradientMaker;I)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;->val$preset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 87
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;->val$preset:I

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->modifyDirectionsWithDefault(I)V

    .line 88
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
