.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;
.super Ljava/lang/Object;
.source "unifiedColor_selector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$colorListLast:Landroid/widget/LinearLayout;

.field final synthetic val$lpa:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->val$colorListLast:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 142
    const/4 v3, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V

    .line 165
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->show()V

    return-void

    const/4 v1, 0x3
.end method
