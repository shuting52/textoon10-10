.class public Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
.super Ljava/lang/Object;
.source "displayInfo.java"


# instance fields
.field private gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

.field imageHolder:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

.field private layerHolderScroll:Landroid/widget/ScrollView;

.field previewPanel:Landroid/widget/FrameLayout;

.field private textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

.field zoom_widget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    .line 31
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    return-void
.end method


# virtual methods
.method public getContainerHeight()I
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 41
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public getContainerWidth()I
    .locals 3

    const/4 v2, 0x2

    .line 45
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public getLayerHolderScroll()Landroid/widget/ScrollView;
    .locals 2

    const/4 v1, 0x1

    .line 55
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->layerHolderScroll:Landroid/widget/ScrollView;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getTextContain()Lcom/imaginstudio/imagetools/pixellab/textContainer;
    .locals 2

    const/4 v1, 0x0

    .line 65
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getUsedBitmapBg()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x3

    .line 70
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getUsedImageInfoBg()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    .locals 2

    const/4 v1, 0x2

    .line 73
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getUsedImage()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    return-object v0

    const/4 v1, 0x1
.end method

.method public getViewOrigin()Landroid/graphics/PointF;
    .locals 3

    const/4 v2, 0x1

    .line 52
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getViewOrigin()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    const/4 v2, 0x2

    return-object v0

    const/4 v0, 0x2
.end method

.method public getZoomFactor()F
    .locals 3

    const/4 v2, 0x0

    .line 49
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getZoomFactor()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    const/4 v2, 0x3

    return v1

    const/4 v0, 0x2
.end method

.method public motionActionUp()V
    .locals 2

    const/4 v1, 0x1

    .line 89
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    if-nez v0, :cond_0

    const/4 v1, 0x3

    return-void

    .line 90
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->actionUp()V

    return-void

    const/4 v1, 0x1
.end method

.method public safetyCheck()Z
    .locals 2

    const/4 v1, 0x3

    .line 38
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method public setBgLayout(Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;)V
    .locals 1

    const/4 v0, 0x2

    .line 35
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    return-void

    const/4 v0, 0x0
.end method

.method public setGridPanel(Lcom/imaginstudio/imagetools/pixellab/GridPanel;)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    return-void

    const/4 v0, 0x0
.end method

.method public setLayerHolderScroll(Landroid/widget/ScrollView;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->layerHolderScroll:Landroid/widget/ScrollView;

    return-void

    const/4 v0, 0x0
.end method

.method public setTextContain(Lcom/imaginstudio/imagetools/pixellab/textContainer;)V
    .locals 1

    const/4 v0, 0x3

    .line 62
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    return-void

    const/4 v0, 0x0
.end method

.method public snapEnabled()Z
    .locals 2

    const/4 v1, 0x2

    .line 93
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    return v0

    .line 94
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->isSnapEnabled()Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public snapPosX(FFZ)F
    .locals 3

    const/4 v2, 0x0

    .line 83
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapPos(FFZZ)F

    move-result p1

    :cond_0
    const/4 v2, 0x3

    return p1

    const/4 v0, 0x2
.end method

.method public snapPosX(FZ)F
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FFZ)F

    move-result p1

    return p1

    const/4 v1, 0x1
.end method

.method public snapPosY(FFZ)F
    .locals 3

    const/4 v2, 0x0

    .line 77
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapPos(FFZZ)F

    move-result p1

    :cond_0
    const/4 v2, 0x3

    return p1

    const/4 v0, 0x2
.end method

.method public snapPosY(FZ)F
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FFZ)F

    move-result p1

    return p1

    const/4 v1, 0x1
.end method
