.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;
.super Ljava/lang/Object;
.source "unifiedColor_selector.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 146
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    .line 147
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    .line 148
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->reportColorChange()V

    .line 150
    const/4 v3, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "last_colors"

    .line 151
    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getListInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    const/4 v3, 0x0

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_0

    const/4 v3, 0x2

    .line 155
    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    const-string p1, "last_colors"

    .line 157
    const/4 v3, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putListInt(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 159
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->val$colorListLast:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;->val$lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void

    const/4 v1, 0x3
.end method
