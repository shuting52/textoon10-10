.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;
.super Ljava/lang/Object;
.source "unifiedColor_selector.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field final synthetic val$colorList:Landroid/widget/LinearLayout;

.field final synthetic val$colorListHolder:Landroid/widget/LinearLayout;

.field final synthetic val$colorListLast:Landroid/widget/LinearLayout;

.field final synthetic val$gradientsList:Landroid/widget/LinearLayout;

.field final synthetic val$gradientsListHolder:Landroid/widget/LinearLayout;

.field final synthetic val$gradientsListLast:Landroid/widget/LinearLayout;

.field final synthetic val$lpa:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsListHolder:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorListHolder:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorList:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorListLast:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsList:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsListLast:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const p1, 0x7f080056

    const/16 v0, 0x8

    if-eq p2, p1, :cond_4

    const/4 v2, 0x1

    const p1, 0x7f080088

    const/4 v1, 0x0

    if-eq p2, p1, :cond_2

    const/4 v2, 0x2

    const p1, 0x7f0800ef

    if-eq p2, p1, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_0

    const/4 v2, 0x0

    .line 117
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-boolean p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->gradientsAdded:Z

    if-nez p1, :cond_1

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsList:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertDefaultGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 120
    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsListLast:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 121
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    .line 122
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setIsAutomatic(Z)V

    goto :goto_0

    const/4 v2, 0x2

    .line 109
    const/4 v2, 0x3

    :cond_2
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-boolean p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->colorsAdded:Z

    if-nez p1, :cond_3

    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorList:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertDefaultColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 112
    const/4 v2, 0x0

    :cond_3
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorListLast:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 113
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    .line 114
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setIsAutomatic(Z)V

    goto :goto_0

    const/4 v2, 0x0

    .line 125
    const/4 v2, 0x1

    :cond_4
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$colorListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->val$gradientsListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setIsAutomatic(Z)V

    .line 128
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->reportColorChange()V

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method
