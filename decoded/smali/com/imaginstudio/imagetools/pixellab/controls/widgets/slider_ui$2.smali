.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$2;
.super Ljava/lang/Object;
.source "slider_ui.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 57
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgressAsIfTheUserHadDoneSo(I)V

    return-void

    const/4 v0, 0x2
.end method
