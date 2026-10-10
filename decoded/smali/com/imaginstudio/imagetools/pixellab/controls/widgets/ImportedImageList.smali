.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;
.super Landroid/view/View;
.source "ImportedImageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;,
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;
    }
.end annotation


# static fields
.field private static final margin:F


# instance fields
.field backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

.field listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;

.field private orientHorizontal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 45
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->margin:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/R$styleable;->ImportedImageList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070081

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    .line 62
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$$Lambda$0;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;)V

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private clickedAt(FF)V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 119
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v2, v1, :cond_1

    const/4 v5, 0x0

    aget-object v3, v0, v2

    .line 120
    const/4 v5, 0x1

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    .line 121
    const/4 v5, 0x3

    invoke-direct {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->select(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v5, 0x1

    :cond_1
    const/4 v5, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method private select(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 6

    const/4 v5, 0x0

    .line 111
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v1, :cond_0

    const/4 v5, 0x3

    aget-object v4, v0, v3

    .line 112
    const/4 v5, 0x0

    invoke-virtual {v4, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v5, 0x1

    :cond_0
    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 114
    const/4 v5, 0x3

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->setSelected(Z)V

    .line 115
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;->selected(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    .line 116
    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method private updateImageList()V
    .locals 10

    const/4 v9, 0x1

    .line 66
    const/4 v9, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    if-eqz v0, :cond_0

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getHeight()I

    move-result v0

    goto :goto_0

    const/4 v9, 0x0

    :cond_0
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getWidth()I

    move-result v0

    :goto_0
    const/4 v9, 0x2

    int-to-float v0, v0

    .line 67
    const/4 v9, 0x3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v9, 0x0

    return-void

    .line 69
    const/4 v9, 0x1

    :cond_1
    const/4 v9, 0x2

    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    .line 71
    const/4 v9, 0x3

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getUsedImageInfoBg()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v9, 0x0

    .line 73
    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    const/4 v9, 0x3

    .line 78
    const/4 v9, 0x0

    :pswitch_0
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {p0, v4, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, p0, v2, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Landroid/graphics/RectF;)V

    aput-object v6, v5, v4

    goto :goto_1

    const/4 v9, 0x1

    .line 75
    const/4 v9, 0x2

    :pswitch_1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v2

    invoke-virtual {p0, v4, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, p0, v2, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;ILandroid/graphics/RectF;)V

    aput-object v6, v5, v4

    goto :goto_1

    const/4 v9, 0x3

    .line 81
    const/4 v9, 0x0

    :cond_2
    const/4 v9, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    sget-object v6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getUsedBitmapBg()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v4, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    aput-object v5, v2, v4

    .line 85
    const/4 v9, 0x2

    :cond_3
    const/4 v9, 0x3

    :goto_1
    const/4 v9, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->setSelected(Z)V

    .line 87
    const/4 v9, 0x1

    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    const/4 v9, 0x2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v9, 0x3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 88
    const/4 v9, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 89
    const/4 v9, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iget-object v7, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v8

    invoke-direct {v6, p0, v4, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    aput-object v6, v5, v3

    move v3, v7

    goto :goto_2

    const/4 v9, 0x2

    .line 91
    const/4 v9, 0x3

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->requestLayout()V

    .line 92
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->invalidate()V

    .line 93
    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->selectFirst()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x1
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$ImportedImageList()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->updateImageList()V

    return-void

    const/4 v0, 0x0
.end method

.method getBoundsAt(IF)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x2

    .line 96
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, p1

    mul-float p1, p1, p2

    .line 98
    const/4 v3, 0x0

    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    move p2, p1

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    const/4 p2, 0x0

    :goto_0
    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    const/4 p1, 0x0

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 99
    const/4 v3, 0x3

    sget p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->margin:F

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->margin:F

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x1

    .line 136
    const/4 v4, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    const/4 v4, 0x2

    .line 138
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_1

    const/4 v4, 0x2

    aget-object v3, v0, v2

    .line 139
    const/4 v4, 0x3

    invoke-virtual {v3, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    return-void

    :cond_2
    const/4 v4, 0x2

    :goto_1
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v2, 0x1

    .line 129
    const/4 v2, 0x2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 130
    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length p1, p1

    mul-int v1, p1, p2

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->setMeasuredDimension(II)V

    goto :goto_0

    const/4 v2, 0x3

    .line 131
    const/4 v2, 0x0

    :cond_1
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length p2, p2

    mul-int v1, p2, p1

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->setMeasuredDimension(II)V

    :goto_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x2

    .line 105
    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 106
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->clickedAt(FF)V

    :cond_0
    const/4 v2, 0x2

    return v1

    const/4 v0, 0x2
.end method

.method public selectFirst()V
    .locals 3

    const/4 v2, 0x0

    .line 48
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    const/4 v2, 0x0

    .line 49
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->select(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    return-void

    :cond_1
    const/4 v2, 0x3

    :goto_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public setSelectListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;)V
    .locals 1

    const/4 v0, 0x2

    .line 142
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;

    return-void

    const/4 v0, 0x0
.end method
