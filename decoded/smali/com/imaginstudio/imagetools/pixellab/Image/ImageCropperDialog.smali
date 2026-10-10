.class public Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
.super Landroid/app/AlertDialog;
.source "ImageCropperDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;
    }
.end annotation


# instance fields
.field actualImSize:[I

.field actualImSizeCropped:[I

.field private aspectButtonsHolder:Landroid/widget/LinearLayout;

.field private cancelButton:Landroid/widget/ImageButton;

.field private circleButton:Landroid/widget/ImageButton;

.field cropListener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

.field private dialogLayout:Landroid/view/View;

.field private flipHButton:Landroid/widget/ImageButton;

.field private flipVButton:Landroid/widget/ImageButton;

.field private image:Landroid/graphics/Bitmap;

.field private imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

.field private lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

.field private lockButton:Landroid/widget/ImageButton;

.field private maximizeButton:Landroid/widget/ImageButton;

.field private okButton:Landroid/widget/ImageButton;

.field private rotateCCWButton:Landroid/widget/ImageButton;

.field private rotateCWButton:Landroid/widget/ImageButton;

.field private sizeIndicator:Landroid/widget/TextView;

.field useNewDims:Landroid/support/v7/widget/AppCompatCheckBox;

.field zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field private zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .locals 13

    move-object v9, p0

    .line 108
    invoke-direct {v9, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x2

    .line 60
    new-array v0, v10, [I

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    const/4 v0, 0x0

    .line 102
    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    .line 109
    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a003b

    .line 110
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    .line 111
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setView(Landroid/view/View;)V

    .line 113
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    .line 115
    iget-object v11, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;

    move-object v0, v12

    move-object v1, v9

    move-object v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZLandroid/graphics/RectF;IZZZ)V

    invoke-virtual {v11, v12}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->post(Ljava/lang/Runnable;)Z

    .line 124
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->rotateCWButton:Landroid/widget/ImageButton;

    .line 125
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->rotateCWButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$4;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->rotateCCWButton:Landroid/widget/ImageButton;

    .line 132
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->rotateCCWButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$5;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->okButton:Landroid/widget/ImageButton;

    .line 140
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    .line 141
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    .line 142
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$6;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$7;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 158
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f080099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cancelButton:Landroid/widget/ImageButton;

    .line 159
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$8;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$8;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->maximizeButton:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->maximizeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$9;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$9;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    .line 173
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 175
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 176
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->aspectButtonsHolder:Landroid/widget/LinearLayout;

    .line 193
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    .line 195
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v0, 0x1

    .line 196
    invoke-direct {v9, v0, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/16 v0, 0x9

    const/16 v1, 0x10

    .line 197
    invoke-direct {v9, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/4 v2, 0x4

    const/4 v3, 0x3

    .line 198
    invoke-direct {v9, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    .line 199
    invoke-direct {v9, v3, v10}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    .line 200
    invoke-direct {v9, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    .line 201
    invoke-direct {v9, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    .line 202
    invoke-direct {v9, v10, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/4 v0, 0x6

    .line 203
    invoke-direct {v9, v2, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/16 v1, 0x8

    .line 204
    invoke-direct {v9, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    .line 205
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f08013c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->sizeIndicator:Landroid/widget/TextView;

    .line 206
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$$Lambda$0;

    invoke-direct {v2, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$$Lambda$0;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;)V

    .line 213
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0800a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    .line 214
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setChild(Landroid/view/View;)V

    .line 215
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setZoomWidget(Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;)V

    .line 216
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0800a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    .line 217
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setNotifyOnChange(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V

    .line 218
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;

    invoke-direct {v2, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;)V

    .line 228
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0800a2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->useNewDims:Landroid/support/v7/widget/AppCompatCheckBox;

    if-nez p9, :cond_0

    .line 230
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->sizeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->useNewDims:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    .line 233
    :cond_0
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->okButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$$Lambda$1;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$$Lambda$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 40
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 40
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->image:Landroid/graphics/Bitmap;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x0

    .line 40
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x3

    .line 40
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x2

    .line 40
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$500(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x1

    .line 40
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$600(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    .locals 1

    const/4 v0, 0x0

    .line 40
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    return-object p0

    const/4 v0, 0x0
.end method

.method private addAspect(II)V
    .locals 3

    const/4 v2, 0x3

    .line 248
    const/4 v2, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    .line 249
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->aspectButtonsHolder:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method final synthetic lambda$new$0$ImageCropperDialog(FFZ)V
    .locals 4

    const/4 v3, 0x0

    .line 207
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    .line 208
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    aget v2, v2, p3

    int-to-float v2, v2

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 209
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    div-float/2addr p2, v1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    aget p3, v0, p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    float-to-int p2, p2

    aput p2, p1, v1

    .line 210
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->sizeIndicator:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    aget p3, p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    aget p3, p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method final synthetic lambda$new$1$ImageCropperDialog(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    .line 234
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    if-eqz p1, :cond_1

    const/4 v7, 0x2

    .line 235
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getCropBounds()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    .line 237
    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 v7, 0x3

    .line 238
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getImageRotation()I

    move-result v2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-boolean v3, p1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-boolean v4, p1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-boolean v5, p1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->useNewDims:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 239
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    :goto_0
    const/4 v7, 0x3

    move-object v6, p1

    goto :goto_1

    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    const/4 p1, 0x0

    goto :goto_0

    const/4 v7, 0x2

    .line 238
    const/4 v7, 0x3

    :goto_1
    const/4 v7, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;->cropDone(Landroid/graphics/RectF;IZZZ[I)V

    .line 243
    const/4 v7, 0x1

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dismiss()V

    return-void

    const/4 v1, 0x3
.end method

.method loadImage(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 265
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    .line 266
    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v5, 0x0

    .line 267
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    .line 268
    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    aget v2, v2, v3

    invoke-static {v1, v2, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result p2

    invoke-static {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->image:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    const/4 v5, 0x3

    .line 269
    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v1, v2, :cond_2

    const/4 v5, 0x2

    .line 270
    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 271
    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->isAssetFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    .line 272
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 273
    const/4 v5, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    const/4 v5, 0x0

    :cond_1
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    .line 276
    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    aget v2, v2, v0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    aget v3, v4, v3

    invoke-static {v2, v3, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->loadBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v5, 0x3

    :catch_0
    move-exception p1

    .line 280
    const/4 v5, 0x0

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 281
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Error loading image"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 282
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dismiss()V

    :cond_2
    const/4 v5, 0x3

    :goto_0
    const/4 v5, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public lockAspect(Z)V
    .locals 3

    const/4 v2, 0x2

    .line 84
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 85
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;Z)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->post(Ljava/lang/Runnable;)Z

    .line 91
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    .line 64
    const/4 v2, 0x2

    instance-of v0, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 65
    const/4 v2, 0x0

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;

    .line 66
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 67
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    invoke-virtual {v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setAspectAndLock(II)V

    .line 68
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->lockAspect:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x3

    .line 255
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 257
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setAspectAndLock(II)V
    .locals 3

    const/4 v2, 0x3

    .line 73
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 74
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;II)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->post(Ljava/lang/Runnable;)Z

    .line 80
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public setCircularSupported(Z)V
    .locals 2

    const/4 v1, 0x2

    .line 96
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 p1, 0x0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/16 p1, 0x8

    :goto_0
    const/4 v1, 0x3

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    const/4 v1, 0x1
.end method

.method public setCropListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    return-void

    const/4 v0, 0x0
.end method
