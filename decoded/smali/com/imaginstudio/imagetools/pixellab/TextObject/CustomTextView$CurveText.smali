.class Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
.super Ljava/lang/Object;
.source "CustomTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurveText"
.end annotation


# instance fields
.field curveSpacing:I

.field spacedText:Ljava/lang/String;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

.field unspacedText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->this$0:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$1;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;-><init>(Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)V

    return-void
.end method


# virtual methods
.method applySpacing()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 859
    const/4 v3, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    if-lez v0, :cond_2

    const/4 v3, 0x3

    .line 860
    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$0"

    .line 861
    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 862
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    div-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_0

    const/4 v3, 0x0

    const-string v2, "\u200a"

    .line 863
    const/4 v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x2

    .line 866
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->this$0:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->access$100(Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    const-string v2, ".(?=\\s)"

    goto :goto_1

    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    const-string v2, ".(?=.)"

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->spacedText:Ljava/lang/String;

    goto :goto_2

    const/4 v3, 0x1

    .line 867
    const/4 v3, 0x2

    :cond_2
    const/4 v3, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    if-nez v0, :cond_3

    const/4 v3, 0x0

    .line 868
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->spacedText:Ljava/lang/String;

    goto :goto_2

    const/4 v3, 0x2

    .line 870
    const/4 v3, 0x3

    :cond_3
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->spacedText:Ljava/lang/String;

    :goto_2
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method getSpacedText()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    .line 854
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->spacedText:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method setText(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x2

    .line 846
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    .line 847
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    .line 848
    const/4 v1, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    .line 849
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->applySpacing()V

    :cond_1
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method
