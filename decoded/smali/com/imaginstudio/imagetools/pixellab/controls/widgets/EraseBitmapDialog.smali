.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;
.super Landroid/app/AlertDialog;
.source "EraseBitmapDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;
    }
.end annotation


# instance fields
.field EraseMode_Panel1:Landroid/view/View;

.field EraseMode_Panel2:Landroid/view/View;

.field OnEraseBitmapDone:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;

.field SelectMode_Panel:Landroid/view/View;

.field dialogLayout:Landroid/view/View;

.field eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

.field eraserBlurSeeker:Landroid/widget/SeekBar;

.field eraserButton:Landroid/view/View;

.field eraserSizeUnder:Landroid/widget/SeekBar;

.field eraserStrokeSeeker:Landroid/widget/SeekBar;

.field previewerView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;

.field remInvertButton:Landroid/view/View;

.field remSelectionButton:Landroid/view/View;

.field selDelL:Landroid/view/View;

.field selTypeCircle:Landroid/view/View;

.field selTypeFree:Landroid/view/View;

.field selTypeSquare:Landroid/view/View;

.field selectButton:Landroid/view/View;

.field undoButton:Landroid/view/View;

.field zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V
    .locals 7

    .line 52
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->OnEraseBitmapDone:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;

    .line 54
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->setView(Landroid/view/View;IIII)V

    .line 57
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 60
    sget-boolean v2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 63
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;Lcom/google/android/gms/ads/AdView;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0800bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v4, 0x7f0801a3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeFree:Landroid/view/View;

    .line 79
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v4, 0x7f0801a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeSquare:Landroid/view/View;

    .line 80
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v4, 0x7f0801a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeCircle:Landroid/view/View;

    .line 81
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeFree:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 82
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v5, 0x7f08019f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selDelL:Landroid/view/View;

    .line 83
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v5, 0x7f0801a1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remSelectionButton:Landroid/view/View;

    .line 84
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v5, 0x7f0801a0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remInvertButton:Landroid/view/View;

    .line 85
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;

    invoke-direct {v5, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V

    invoke-direct {v3, p1, p3, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    .line 127
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800bd

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 128
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const v3, 0x7f0800be

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;

    invoke-direct {v3, p0, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p4, 0x7f0800ca

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    .line 136
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p4, 0x7f0800c9

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    .line 137
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setChild(Landroid/view/View;)V

    .line 138
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setNotifyOnChange(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V

    .line 139
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$4;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;)V

    .line 149
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c7

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->SelectMode_Panel:Landroid/view/View;

    .line 150
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel1:Landroid/view/View;

    .line 151
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel1:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel2:Landroid/view/View;

    .line 153
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel2:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel2:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->SelectMode_Panel:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c4

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserStrokeSeeker:Landroid/widget/SeekBar;

    .line 156
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c8

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserSizeUnder:Landroid/widget/SeekBar;

    .line 157
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800bb

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserBlurSeeker:Landroid/widget/SeekBar;

    .line 158
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getCurrentEraserRadius()F

    move-result p3

    mul-float p3, p3, v0

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->setRadius(F)V

    .line 159
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserStrokeSeeker:Landroid/widget/SeekBar;

    const/16 p3, 0x28

    invoke-static {p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 160
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserStrokeSeeker:Landroid/widget/SeekBar;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iget p3, p3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    mul-float p3, p3, v0

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserSizeUnder:Landroid/widget/SeekBar;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$5;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 177
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserStrokeSeeker:Landroid/widget/SeekBar;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$6;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 195
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserBlurSeeker:Landroid/widget/SeekBar;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$7;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 212
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c1

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserButton:Landroid/view/View;

    .line 213
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c6

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selectButton:Landroid/view/View;

    .line 214
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selDelL:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeFree:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeSquare:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeCircle:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selectButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remSelectionButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remInvertButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserButton:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 240
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setMasks(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V

    .line 241
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f0800c0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->previewerView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;

    .line 242
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->previewerView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setPreviewListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 247
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800bf

    if-eq p1, v0, :cond_2

    const/4 v4, 0x0

    const v0, 0x7f0800c1

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1

    const/4 v4, 0x1

    const v0, 0x7f0800c6

    if-eq p1, v0, :cond_0

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    const/4 v4, 0x3

    .line 284
    const/4 v4, 0x0

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setSelectionType(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V

    goto/16 :goto_0

    const/4 v4, 0x1

    .line 281
    const/4 v4, 0x2

    :pswitch_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setSelectionType(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V

    goto/16 :goto_0

    const/4 v4, 0x3

    .line 287
    const/4 v4, 0x0

    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setSelectionType(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V

    goto/16 :goto_0

    const/4 v4, 0x1

    .line 275
    const/4 v4, 0x2

    :pswitch_3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->removeFreeSelection(Z)V

    goto/16 :goto_0

    const/4 v4, 0x3

    .line 278
    const/4 v4, 0x0

    :pswitch_4
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->removeFreeSelection(Z)V

    goto/16 :goto_0

    const/4 v4, 0x1

    .line 290
    const/4 v4, 0x2

    :pswitch_5
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->delLastFreeSelection()V

    goto/16 :goto_0

    const/4 v4, 0x3

    .line 262
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-eq p1, v0, :cond_3

    const/4 v4, 0x2

    .line 263
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 264
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selectButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 265
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeFree:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 266
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeSquare:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 267
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeCircle:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 268
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setMode(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;)V

    .line 269
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->SelectMode_Panel:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel2:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    const/4 v4, 0x1

    .line 249
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-eq p1, v0, :cond_3

    const/4 v4, 0x0

    .line 250
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraserButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 251
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selectButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 252
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setMode(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;)V

    .line 253
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->SelectMode_Panel:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel1:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel2:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->EraseMode_Panel2:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    const/4 v4, 0x0

    .line 259
    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->undoOp()V

    :cond_3
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08019f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x2

    .line 296
    const/4 v2, 0x3

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 297
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 298
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 299
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method
