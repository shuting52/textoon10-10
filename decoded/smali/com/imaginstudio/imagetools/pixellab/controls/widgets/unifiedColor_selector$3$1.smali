.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;
.super Ljava/lang/Object;
.source "unifiedColor_selector.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGradientSelected(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 175
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    .line 176
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    goto :goto_0

    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    iput-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 177
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->reportColorChange()V

    .line 179
    const/4 v3, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "last_gradients"

    .line 180
    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 181
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object p1

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 183
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 184
    const/4 v3, 0x2

    :goto_1
    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    const/4 v3, 0x0

    .line 185
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    const-string p1, "last_gradients"

    .line 187
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 188
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->val$gradientsListLast:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void

    const/4 v1, 0x3
.end method
