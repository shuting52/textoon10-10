.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;
.super Landroid/widget/LinearLayout;
.source "seekArc_ui.java"


# instance fields
.field arc:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0a001f

    invoke-static {p1, v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f080199

    .line 17
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    .line 18
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setProgress(I)V

    .line 19
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setmProgressShow(Ljava/lang/Boolean;)V

    .line 20
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setOnSeekArcChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    .line 21
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setTouchInSide(Z)V

    return-void
.end method


# virtual methods
.method public ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 24
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setIgnoreTouchFor(Landroid/widget/ScrollView;)V

    return-void

    const/4 v1, 0x1
.end method
