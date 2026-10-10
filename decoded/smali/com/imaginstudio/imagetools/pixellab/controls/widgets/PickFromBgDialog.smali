.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;
.super Landroid/app/AlertDialog;
.source "PickFromBgDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;
    }
.end annotation


# instance fields
.field currColor:I

.field dialogLayout:Landroid/view/View;

.field imgShow:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

.field listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;

.field zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V
    .locals 7

    .line 37
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->currColor:I

    .line 38
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;

    .line 39
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a0037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    .line 40
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->setView(Landroid/view/View;IIII)V

    .line 41
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f080150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    .line 42
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f080151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    .line 43
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f080086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->imgShow:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    .line 44
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->imgShow:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setChild(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setNotifyOnChange(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V

    .line 46
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;)V

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;)V

    .line 56
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->currColor:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 57
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    .line 58
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 59
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f080155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->imgShow:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;)V

    .line 67
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f080153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;

    invoke-direct {v0, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f080152

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$4;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f080110

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->imgShow:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->setSelectListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 87
    const/4 v2, 0x2

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 88
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 90
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method
