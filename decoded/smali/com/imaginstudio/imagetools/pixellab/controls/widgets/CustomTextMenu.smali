.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
.super Landroid/widget/PopupWindow;
.source "CustomTextMenu.java"


# instance fields
.field private currContext:Landroid/content/Context;

.field private final horPadding:I

.field private itemsContainer:Landroid/widget/LinearLayout;

.field lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

.field lParamsText:Landroid/widget/LinearLayout$LayoutParams;

.field private largestChildWidth:I

.field private final maxWidth:I

.field private popupView:Landroid/widget/ScrollView;

.field private proItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final verPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xd

    .line 39
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->horPadding:I

    const/4 v0, 0x3

    .line 40
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->verPadding:I

    const/16 v0, 0x12c

    .line 41
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->maxWidth:I

    const/16 v0, 0x1e

    .line 42
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->proItems:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->popupView:Landroid/widget/ScrollView;

    .line 50
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsText:Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsText:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsText:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 54
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->popupView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->popupView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->setContentView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->setWidth(I)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->setHeight(I)V

    const v0, 0x7f070166

    .line 58
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->setFocusable(Z)V

    .line 60
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private addSeparator(Z)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 102
    const/4 v3, 0x0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v3, 0x1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#e5e5e5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    .line 105
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->proItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method private createItem(ILjava/lang/Runnable;Z)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v2, 0x3

    .line 65
    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    # Re-apply the active locale by source text for views whose Context bypasses
    # MainActivity's wrapped Resources when resolving this string resource.
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v2, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;

    invoke-direct {p1, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const/4 v2, 0x3

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->defaultTextSettings(Landroid/widget/TextView;)V

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 76
    const/4 v2, 0x1

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x10

    .line 77
    const/4 v2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    const/4 v2, 0x3

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$$Lambda$0;

    invoke-direct {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$$Lambda$0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v2, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    const p3, 0x7f0700dd

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 81
    const/4 v2, 0x2

    new-instance p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v2, 0x3

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v2, 0x1

    return-object v0

    const/4 v0, 0x2
.end method

.method private defaultTextSettings(Landroid/widget/TextView;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x2

    const/high16 v1, 0x41900000    # 18.0f

    .line 91
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "#535353"

    .line 92
    const/4 v4, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 93
    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 94
    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    const/4 v4, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->maxWidth:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 96
    const/4 v4, 0x1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    const/4 v4, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->horPadding:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->verPadding:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->horPadding:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->verPadding:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    const v1, 0x7f07013b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    const/4 v0, 0x0
.end method

.method static final synthetic lambda$createItem$0$CustomTextMenu(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 78
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public addItem(ILjava/lang/Runnable;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;Z)V

    return-void

    const/4 v1, 0x1
.end method

.method public addItem(ILjava/lang/Runnable;Z)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v1, 0x3

    .line 127
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->createItem(ILjava/lang/Runnable;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 128
    const/4 v1, 0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/View;->measure(II)V

    .line 129
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 130
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    if-le p2, v0, :cond_0

    const/4 v1, 0x0

    .line 131
    const/4 v1, 0x1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    .line 133
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsText:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addSeparator(Z)V

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 135
    const/4 v1, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->proItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public addTextItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    const v0, 0x7f0c0021
    const/4 v1, 0x0
    invoke-virtual {p0, v0, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;Z)V
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v1
    add-int/lit8 v1, v1, -0x2
    if-ltz v1, :add_text_item_done
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    instance-of v3, v2, Landroid/widget/TextView;
    if-eqz v3, :add_text_item_done
    check-cast v2, Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v0, 0x0
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
    move-result v3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I
    if-le v3, v0, :add_text_item_done
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I
:add_text_item_done
    return-void
.end method

.method public done()V
    .locals 5

    const/4 v4, 0x1

    .line 109
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    .line 110
    const/4 v4, 0x0

    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 111
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 113
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    const/4 v0, 0x0

    .line 114
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v4, 0x3

    .line 115
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 116
    const/4 v4, 0x1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/4 v4, 0x2

    .line 117
    const/4 v4, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_1
    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public hideFirstItem(Z)V
    .locals 5

    const/4 v4, 0x1

    .line 140
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v4, 0x3

    const/16 v3, 0x8

    goto :goto_0

    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    const/4 v4, 0x0

    .line 142
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    const/16 v1, 0x8

    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v4, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public toggleProItems(Z)V
    .locals 4

    const/4 v3, 0x2

    .line 146
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->proItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    const/4 v2, 0x0

    goto :goto_1

    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 147
    const/4 v3, 0x1

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    const/4 v3, 0x3

    :cond_1
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method
