.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;
.super Landroid/widget/LinearLayout;
.source "removeColorTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;
    }
.end annotation


# instance fields
.field currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

.field currIndex:I

.field private listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    .line 51
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0a005b

    invoke-static {p1, v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    .line 53
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->toggleNumberView(Z)V

    .line 54
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const p2, 0x7f080176

    .line 55
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnColorNotifyChange(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;)V

    .line 62
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080178

    .line 75
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$3;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080175

    .line 81
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08017a

    .line 87
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$5;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080177

    .line 93
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$6;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080179

    .line 99
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$7;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 23
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    return-object p0

    const/4 v0, 0x0
.end method


# virtual methods
.method public getCurrIndex()I
    .locals 2

    const/4 v1, 0x1

    .line 29
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    return v0

    const/4 v1, 0x1
.end method

.method public modifyCurrentColor(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 112
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    if-ltz v0, :cond_0

    const/4 v2, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public modifyCurrentTolerance(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 115
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public setCurrColor(I)V
    .locals 2

    const/4 v1, 0x0

    .line 107
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    .line 108
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public setCurrIndex(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x2

    .line 33
    const/4 v2, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    .line 34
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setNumberToView(I)V

    .line 35
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrColor(I)V

    :cond_1
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public setListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;)V
    .locals 1

    const/4 v0, 0x3

    .line 47
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    return-void

    const/4 v0, 0x0
.end method
