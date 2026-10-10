.class Lcom/imaginstudio/imagetools/pixellab/GradientMaker$2;
.super Ljava/lang/Object;
.source "GradientMaker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/GradientMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GradientMaker;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    const/4 v0, 0x0

    .line 101
    const/4 v0, 0x1

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->access$000(Lcom/imaginstudio/imagetools/pixellab/GradientMaker;)Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 102
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->access$000(Lcom/imaginstudio/imagetools/pixellab/GradientMaker;)Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/GradientMaker;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getCurrentGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;->onGradientSelected(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    goto :goto_0

    const/4 v0, 0x0

    .line 106
    const/4 v0, 0x1

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v0, 0x3

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method
