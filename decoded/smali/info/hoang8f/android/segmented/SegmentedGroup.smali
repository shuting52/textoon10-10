.class public Linfo/hoang8f/android/segmented/SegmentedGroup;
.super Landroid/widget/RadioGroup;
.source "SegmentedGroup.java"


# instance fields
.field private mCheckedTextColor:I

.field private mTintColor:I

.field private oneDP:I

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    .line 27
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    .line 28
    iget-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    sget v0, Linfo/hoang8f/android/segmented/R$color;->radio_button_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 29
    iget-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    .line 34
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    .line 35
    iget-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    sget p2, Linfo/hoang8f/android/segmented/R$color;->radio_button_selected_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 36
    iget-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    return-void
.end method

.method private updateBackground(Landroid/view/View;II)V
    .locals 7

    .line 108
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    aput-object v4, v2, v5

    const/4 v4, 0x2

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    aput-object v6, v2, v3

    new-array v6, v4, [I

    fill-array-data v6, :array_1

    aput-object v6, v2, v4

    new-array v1, v1, [I

    const v6, -0x777778

    aput v6, v1, v5

    iget v6, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    aput v6, v1, v3

    iget v6, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    aput v6, v1, v4

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 113
    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 117
    iget-object v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 118
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 119
    move-object v0, p3

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    iget v2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 122
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 123
    new-array v1, v3, [I

    const v2, -0x10100a0

    aput v2, v1, v5

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 124
    new-array p3, v3, [I

    const v1, 0x10100a0

    aput v1, p3, v5

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 127
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_0

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a0
    .end array-data

    :array_1
    .array-data 4
        -0x10100a7
        0x10100a0
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 43
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 47
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 48
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(II)V
    .locals 0

    .line 52
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 53
    iput p2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    .line 54
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public updateBackground()V
    .locals 9

    .line 58
    invoke-super {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_6

    .line 60
    invoke-virtual {p0, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup$LayoutParams;

    .line 62
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    iget v6, v4, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v7, v4, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v4, v4, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v5, v6, v7, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 64
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getOrientation()I

    move-result v4

    if-nez v4, :cond_0

    .line 65
    iget v4, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    neg-int v4, v4

    invoke-virtual {v5, v2, v2, v4, v2}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 67
    :cond_0
    iget v4, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    neg-int v4, v4

    invoke-virtual {v5, v2, v2, v2, v4}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 69
    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getOrientation()I

    move-result v3

    if-nez v3, :cond_1

    .line 72
    invoke-virtual {p0, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Linfo/hoang8f/android/segmented/R$drawable;->radio_checked_left:I

    sget v5, Linfo/hoang8f/android/segmented/R$drawable;->radio_unchecked_left:I

    invoke-direct {p0, v3, v4, v5}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Linfo/hoang8f/android/segmented/R$drawable;->radio_checked_top:I

    sget v5, Linfo/hoang8f/android/segmented/R$drawable;->radio_unchecked_top:I

    invoke-direct {p0, v3, v4, v5}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_4

    .line 78
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getOrientation()I

    move-result v4

    if-nez v4, :cond_2

    .line 79
    invoke-virtual {p0, v3}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Linfo/hoang8f/android/segmented/R$drawable;->radio_checked_middle:I

    sget v6, Linfo/hoang8f/android/segmented/R$drawable;->radio_unchecked_middle:I

    invoke-direct {p0, v4, v5, v6}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    goto :goto_3

    .line 82
    :cond_2
    invoke-virtual {p0, v3}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Linfo/hoang8f/android/segmented/R$drawable;->radio_checked_middle:I

    sget v6, Linfo/hoang8f/android/segmented/R$drawable;->radio_unchecked_middle_vertical:I

    invoke-direct {p0, v4, v5, v6}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    .line 84
    :goto_3
    invoke-virtual {p0, v3}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup$LayoutParams;

    .line 86
    new-instance v6, Landroid/widget/RadioGroup$LayoutParams;

    iget v7, v5, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v8, v5, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v5, v5, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v6, v7, v8, v5}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 88
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getOrientation()I

    move-result v5

    if-nez v5, :cond_3

    .line 89
    iget v5, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    neg-int v5, v5

    invoke-virtual {v6, v2, v2, v5, v2}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    .line 91
    :cond_3
    iget v5, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    neg-int v5, v5

    invoke-virtual {v6, v2, v2, v2, v5}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 93
    :goto_4
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    .line 97
    invoke-virtual {p0, v4}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Linfo/hoang8f/android/segmented/R$drawable;->radio_checked_right:I

    sget v2, Linfo/hoang8f/android/segmented/R$drawable;->radio_unchecked_right:I

    invoke-direct {p0, v0, v1, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {p0, v4}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Linfo/hoang8f/android/segmented/R$drawable;->radio_checked_bottom:I

    sget v2, Linfo/hoang8f/android/segmented/R$drawable;->radio_unchecked_bottom:I

    invoke-direct {p0, v0, v1, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    goto :goto_5

    :cond_6
    if-ne v0, v1, :cond_7

    .line 102
    invoke-virtual {p0, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Linfo/hoang8f/android/segmented/R$drawable;->radio_checked_default:I

    sget v2, Linfo/hoang8f/android/segmented/R$drawable;->radio_unchecked_default:I

    invoke-direct {p0, v0, v1, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    :cond_7
    :goto_5
    return-void
.end method
