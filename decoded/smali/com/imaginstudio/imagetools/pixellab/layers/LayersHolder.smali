.class public Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
.super Landroid/widget/FrameLayout;
.source "LayersHolder.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;
.implements Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;
    }
.end annotation


# static fields
.field public static final height:I

.field public static final horizontalMargin:I

.field public static final verticalMargin:I


# instance fields
.field private Enabled:Z

.field buttonsListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;

.field private selectionMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4a

    .line 29
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    const/4 v0, 0x4

    .line 30
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    const/4 v0, 0x6

    .line 31
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->horizontalMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    .line 37
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method addLayerObject(Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 137
    const/4 v4, 0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 138
    const/4 v4, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    const/4 v4, 0x3

    sget v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->horizontalMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 140
    const/4 v4, 0x0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Z)V

    .line 141
    const/4 v4, 0x1

    invoke-virtual {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setLayerActionListener(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;)V

    .line 142
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v0, 0x0
.end method

.method public clickedEditButton(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    .line 169
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->buttonsListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 170
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->buttonsListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;->clickedQuickEditLayers(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public deleteMyView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    .line 176
    const/4 v0, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->reArrangeLayers(Z)V

    return-void

    const/4 v0, 0x0
.end method

.method public disable()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 198
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->removeAllViews()V

    .line 200
    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->Enabled:Z

    return-void

    const/4 v1, 0x1
.end method

.method public dragLayerFinish(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;)V
    .locals 7

    const/4 v6, 0x3

    .line 162
    const/4 v6, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    .line 163
    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getY()F

    move-result v3

    sget v4, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sget v5, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 164
    const/4 v6, 0x2

    iget-object v3, p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    iget-object v4, p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v4, :cond_0

    const/4 v6, 0x3

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    goto :goto_0

    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    :goto_0
    const/4 v6, 0x2

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setObjectIdInLayout(Ljava/lang/String;Landroid/view/View;IZ)V

    return-void

    const/4 v0, 0x2
.end method

.method public enable()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 193
    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    const/4 v0, 0x1

    .line 194
    const/4 v1, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->Enabled:Z

    .line 195
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->populateLayers()V

    return-void

    const/4 v1, 0x1
.end method

.method public getSelectedReferences()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    .line 53
    const/4 v4, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 54
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v4, 0x1

    .line 55
    const/4 v4, 0x2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    .line 56
    const/4 v4, 0x0

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;

    .line 57
    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    .line 58
    const/4 v4, 0x3

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    return-object v0

    const/4 v0, 0x0
.end method

.method public isSelectionMode()Z
    .locals 2

    const/4 v1, 0x0

    .line 49
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    return v0

    const/4 v1, 0x1
.end method

.method public objectCountChanged()V
    .locals 2

    const/4 v1, 0x3

    .line 182
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->Enabled:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 183
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->populateLayers()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public objectZChange()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x1

    .line 189
    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->reArrangeLayers(Z)V

    return-void

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v4, 0x3

    .line 147
    const/4 v4, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 148
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    .line 149
    const/4 v4, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->setMeasuredDimension(II)V

    goto :goto_1

    const/4 v4, 0x0

    .line 151
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    .line 152
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildCount()I

    move-result v1

    sget v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sget v3, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    sget v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v1, v2

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    goto :goto_0

    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v4, 0x1

    .line 156
    const/4 v4, 0x2

    :catch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method populateLayers()V
    .locals 6

    const/4 v5, 0x1

    .line 77
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->removeAllViews()V

    .line 78
    const/4 v5, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    return-void

    :cond_0
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    const/4 v5, 0x2

    :goto_0
    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v5, 0x0

    .line 85
    const/4 v5, 0x1

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v5, 0x2

    .line 86
    const/4 v5, 0x3

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    .line 87
    const/4 v5, 0x0

    iget-object v4, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    .line 88
    const/4 v5, 0x1

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    goto :goto_1

    const/4 v5, 0x2

    .line 89
    const/4 v5, 0x3

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    .line 90
    const/4 v5, 0x2

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 91
    const/4 v5, 0x3

    iget-object v4, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 92
    const/4 v5, 0x0

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    goto :goto_1

    const/4 v5, 0x1

    :cond_2
    const/4 v5, 0x2

    move-object v3, v4

    :goto_1
    const/4 v5, 0x3

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    .line 95
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->addLayerObject(Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    :cond_3
    const/4 v5, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v5, 0x3

    .line 98
    const/4 v5, 0x0

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->reArrangeLayers(Z)V

    return-void

    const/4 v1, 0x1
.end method

.method reArrangeLayers(Z)V
    .locals 9

    const/4 v8, 0x3

    .line 101
    const/4 v8, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    .line 102
    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v8, 0x3

    goto/16 :goto_2

    const/4 v8, 0x0

    :cond_0
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 105
    const/4 v8, 0x2

    :goto_0
    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v8, 0x0

    .line 106
    const/4 v8, 0x1

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;

    if-eqz v2, :cond_4

    const/4 v8, 0x2

    .line 107
    const/4 v8, 0x3

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;

    .line 108
    const/4 v8, 0x0

    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const-wide/16 v4, 0xc8

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    .line 109
    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0, v6}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v3, v6

    if-ltz v3, :cond_4

    const/4 v8, 0x3

    .line 111
    const/4 v8, 0x0

    sget v6, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sget v7, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v6, v7

    mul-int v3, v3, v6

    sget v6, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 112
    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getY()F

    move-result v6

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_4

    const/4 v8, 0x2

    if-eqz p1, :cond_1

    const/4 v8, 0x3

    .line 114
    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    const/4 v8, 0x1

    .line 116
    const/4 v8, 0x2

    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setY(F)V

    goto :goto_1

    const/4 v8, 0x0

    .line 120
    const/4 v8, 0x1

    :cond_2
    const/4 v8, 0x2

    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v3, :cond_4

    const/4 v8, 0x3

    .line 121
    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0, v6}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v3, v6

    if-ltz v3, :cond_4

    const/4 v8, 0x1

    .line 123
    const/4 v8, 0x2

    sget v6, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sget v7, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v6, v7

    mul-int v3, v3, v6

    sget v6, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 124
    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getY()F

    move-result v6

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_4

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    const/4 v8, 0x1

    .line 126
    const/4 v8, 0x2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    const/4 v8, 0x3

    .line 128
    const/4 v8, 0x0

    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setY(F)V

    :cond_4
    const/4 v8, 0x2

    :goto_1
    const/4 v8, 0x3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    const/4 v8, 0x0

    :cond_5
    const/4 v8, 0x1

    return-void

    :cond_6
    const/4 v8, 0x2

    :goto_2
    const/4 v8, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public setButtonsListener(Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->buttonsListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;

    return-void

    const/4 v0, 0x0
.end method

.method public toggleSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    .line 41
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    const/4 v0, 0x0

    .line 42
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v3, 0x0

    .line 43
    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    .line 44
    const/4 v3, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setSelectionMode(Z)V

    :cond_0
    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method
