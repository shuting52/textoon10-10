.class final Landroid/support/v7/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final COMPLETE:I = 0x2

.field static final NEW:I = 0x0

.field static final PENDING:I = 0x1


# instance fields
.field public arcs:[Landroid/support/v7/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/support/v7/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1098
    const-class v0, Landroid/support/v7/widget/GridLayout;

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/GridLayout;Z)V
    .locals 1

    .line 1138
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 1105
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 1106
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    const/4 p1, 0x0

    .line 1109
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1112
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1115
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1118
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1121
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1124
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1127
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1130
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    const/4 v0, 0x1

    .line 1133
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1135
    new-instance v0, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1136
    new-instance p1, Landroid/support/v7/widget/GridLayout$MutableInt;

    const v0, -0x186a0

    invoke-direct {p1, v0}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1139
    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1369
    :goto_0
    iget-object v2, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1370
    iget-object v2, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$Interval;

    aget-object v2, v2, v1

    .line 1371
    iget-object v3, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroid/support/v7/widget/GridLayout$MutableInt;

    aget-object v3, v3, v1

    invoke-direct {p0, p1, v2, v3, v0}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1443
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string v0, "x"

    goto :goto_0

    :cond_0
    const-string v0, "y"

    .line 1444
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 1446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayout$Arc;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const-string v4, ", "

    .line 1450
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    :goto_2
    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v4, v4, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1453
    iget-object v5, v3, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1454
    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget v3, v3, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    if-ge v4, v5, :cond_2

    .line 1455
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v3, v3

    goto :goto_3

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1460
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private calculateMaxIndex()I
    .locals 6

    .line 1145
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1146
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1147
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1148
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1149
    :goto_1
    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1150
    iget v5, v4, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1151
    iget v5, v4, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1152
    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    const/high16 v3, -0x80000000

    :cond_2
    return v3
.end method

.method private calculateTotalWeight()F
    .locals 6

    .line 1684
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1685
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1686
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 1689
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1690
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1691
    :goto_1
    iget v3, v3, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    add-float/2addr v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private computeArcs()V
    .locals 0

    .line 1407
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1408
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    return-void
.end method

.method private computeGroupBounds()V
    .locals 10

    .line 1200
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1201
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1202
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1204
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1205
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1207
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1208
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_1
    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    .line 1209
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v3, v6, v4}, Landroid/support/v7/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v3

    iget v4, v7, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_4

    .line 1210
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v4

    aget v4, v4, v2

    :goto_4
    add-int v9, v3, v4

    .line 1211
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/support/v7/widget/GridLayout$Bounds;

    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/GridLayout$Bounds;->include(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Axis;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private computeHasWeights()Z
    .locals 6

    .line 1597
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1598
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1599
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 1602
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1603
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1604
    :goto_1
    iget v3, v3, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .line 1238
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$MutableInt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1239
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1240
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$MutableInt;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1244
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1245
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1246
    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v2

    .line 1247
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1249
    iget v4, v3, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    neg-int v2, v2

    :goto_2
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 4

    .line 1697
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)Z

    goto :goto_0

    .line 1700
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    .line 1702
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1709
    aget v1, p1, v0

    .line 1710
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1711
    aget v3, p1, v0

    sub-int/2addr v3, v1

    aput v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private computeMargins(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1556
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    :goto_0
    const/4 v1, 0x0

    .line 1557
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1558
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1559
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_4

    .line 1560
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1561
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    :cond_2
    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1562
    :goto_2
    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    if-eqz p1, :cond_3

    .line 1563
    iget v4, v4, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_3
    iget v4, v4, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1564
    :goto_3
    aget v5, v0, v4

    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v6, v3, v7, p1}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private createArcs()[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 6

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V

    .line 1382
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V

    .line 1385
    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1387
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1388
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v5}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    new-instance v2, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v0, v4, v2}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V

    move v2, v5

    goto :goto_0

    .line 1394
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v2

    .line 1395
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    invoke-direct {v4, v3, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {p0, v0, v4, v5, v3}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1396
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    invoke-direct {v4, v2, v3}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {p0, v1, v4, v2, v3}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1399
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    .line 1400
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v1

    .line 1402
    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Arc;

    return-object v0
.end method

.method private createGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1187
    const-class v0, Landroid/support/v7/widget/GridLayout$Spec;

    const-class v1, Landroid/support/v7/widget/GridLayout$Bounds;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1189
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1191
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1192
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v3, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1193
    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$Alignment;->getBounds()Landroid/support/v7/widget/GridLayout$Bounds;

    move-result-object v4

    .line 1194
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1196
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Assoc;->pack()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    return-object v0
.end method

.method private createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1228
    const-class v0, Landroid/support/v7/widget/GridLayout$Interval;

    const-class v1, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1229
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Landroid/support/v7/widget/GridLayout$Spec;

    .line 1230
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-eqz p1, :cond_0

    .line 1231
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$Interval;->inverse()Landroid/support/v7/widget/GridLayout$Interval;

    move-result-object v4

    .line 1232
    :goto_1
    new-instance v5, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1234
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Assoc;->pack()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object p1

    return-object p1
.end method

.method private getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1265
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1266
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1268
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1269
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V

    const/4 v0, 0x1

    .line 1270
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1272
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1254
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1255
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1257
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1258
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V

    .line 1259
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1261
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .locals 2

    .line 1158
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1159
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    .line 1161
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .locals 0

    .line 1742
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1743
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->size([I)I

    move-result p1

    return p1
.end method

.method private hasWeights()Z
    .locals 1

    .line 1612
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_0

    .line 1613
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights:Z

    const/4 v0, 0x1

    .line 1614
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1616
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights:Z

    return v0
.end method

.method private include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1300
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    return-void
.end method

.method private include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .line 1283
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    .line 1289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$Arc;

    .line 1290
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1291
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1296
    :cond_2
    new-instance p4, Landroid/support/v7/widget/GridLayout$Arc;

    invoke-direct {p4, p2, p3}, Landroid/support/v7/widget/GridLayout$Arc;-><init>(Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private init([I)V
    .locals 1

    const/4 v0, 0x0

    .line 1439
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$Arc;[Z)V
    .locals 5

    .line 1464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1466
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1467
    aget-object v3, p2, v2

    .line 1468
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_0

    .line 1469
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_0
    iget-boolean v4, v3, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1

    .line 1472
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1475
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-object p2, p2, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constraints: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are inconsistent; permanently removing: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1475
    invoke-interface {p2, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method private relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z
    .locals 3

    .line 1423
    iget-boolean v0, p2, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1426
    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1427
    iget v2, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1428
    iget v0, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1429
    iget-object p2, p2, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget p2, p2, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1430
    aget v2, p1, v2

    add-int/2addr v2, p2

    .line 1431
    aget p2, p1, v0

    if-le v2, p2, :cond_1

    .line 1432
    aput v2, p1, v0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private setParentConstraints(II)V
    .locals 1

    .line 1736
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1737
    iget-object p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    neg-int p2, p2

    iput p2, p1, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    const/4 p1, 0x0

    .line 1738
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    return-void
.end method

.method private shareOutDelta(IF)V
    .locals 5

    .line 1627
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1628
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1629
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1630
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 1633
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 1634
    iget-boolean v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1635
    :goto_1
    iget v2, v2, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    int-to-float v3, p1

    mul-float v3, v3, v2

    div-float/2addr v3, p2

    .line 1637
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1638
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    aput v3, v4, v1

    sub-int/2addr p1, v3

    sub-float/2addr p2, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private size([I)I
    .locals 1

    .line 1732
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method

.method private solve([I)Z
    .locals 1

    .line 1593
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([Landroid/support/v7/widget/GridLayout$Arc;[I)Z

    move-result p1

    return p1
.end method

.method private solve([Landroid/support/v7/widget/GridLayout$Arc;[I)Z
    .locals 1

    const/4 v0, 0x1

    .line 1500
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout$Axis;->solve([Landroid/support/v7/widget/GridLayout$Arc;[IZ)Z

    move-result p1

    return p1
.end method

.method private solve([Landroid/support/v7/widget/GridLayout$Arc;[IZ)Z
    .locals 12

    .line 1504
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    goto :goto_0

    :cond_0
    const-string v0, "vertical"

    .line 1505
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    .line 1508
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_c

    .line 1509
    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayout$Axis;->init([I)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    .line 1514
    array-length v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v7, :cond_1

    .line 1515
    aget-object v10, p1, v8

    invoke-direct {p0, p2, v10}, Landroid/support/v7/widget/GridLayout$Axis;->relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    if-nez v9, :cond_3

    if-eqz v5, :cond_2

    .line 1519
    invoke-direct {p0, v0, p1, v5}, Landroid/support/v7/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$Arc;[Z)V

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    return v4

    .line 1529
    :cond_5
    array-length v6, p1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_7

    .line 1531
    array-length v8, p1

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_6

    .line 1532
    aget-boolean v10, v6, v9

    aget-object v11, p1, v9

    invoke-direct {p0, p2, v11}, Landroid/support/v7/widget/GridLayout$Axis;->relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    move-object v5, v6

    :cond_8
    const/4 v7, 0x0

    .line 1540
    :goto_6
    array-length v8, p1

    if-ge v7, v8, :cond_b

    .line 1541
    aget-boolean v8, v6, v7

    if-eqz v8, :cond_a

    .line 1542
    aget-object v8, p1, v7

    .line 1544
    iget-object v9, v8, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v9, v9, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    iget-object v10, v8, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v10, v10, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-ge v9, v10, :cond_9

    goto :goto_7

    .line 1547
    :cond_9
    iput-boolean v4, v8, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_c
    return v2
.end method

.method private solveAndDistributeSpace([I)V
    .locals 11

    .line 1648
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1649
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)Z

    .line 1650
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget v0, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    mul-int v0, v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    return-void

    .line 1656
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->calculateTotalWeight()F

    move-result v3

    const/4 v4, -0x1

    move v2, v0

    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v0, v2, :cond_2

    int-to-long v5, v0

    int-to-long v7, v2

    add-long v9, v5, v7

    const-wide/16 v5, 0x2

    .line 1663
    div-long/2addr v9, v5

    long-to-int v5, v9

    .line 1664
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 1665
    invoke-direct {p0, v5, v3}, Landroid/support/v7/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1666
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([Landroid/support/v7/widget/GridLayout$Arc;[IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v5, 0x1

    move v4, v5

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    move v5, v6

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    if-nez v5, :cond_3

    .line 1676
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 1677
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1678
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)Z

    :cond_3
    return-void
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/support/v7/widget/GridLayout$Arc;"
        }
    .end annotation

    .line 1365
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v7/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/v7/widget/GridLayout$Arc;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort([Landroid/support/v7/widget/GridLayout$Arc;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object p1

    return-object p1
.end method

.method private topologicalSort([Landroid/support/v7/widget/GridLayout$Arc;)[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 1

    .line 1326
    new-instance v0, Landroid/support/v7/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$Axis$1;-><init>(Landroid/support/v7/widget/GridLayout$Axis;[Landroid/support/v7/widget/GridLayout$Arc;)V

    .line 1361
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis$1;->sort()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getArcs()[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 1

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    if-nez v0, :cond_0

    .line 1413
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->createArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1415
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    .line 1416
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeArcs()V

    const/4 v0, 0x1

    .line 1417
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1419
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1165
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDeltas()[I
    .locals 1

    .line 1620
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    if-nez v0, :cond_0

    .line 1621
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    .line 1623
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    return-object v0
.end method

.method public getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1217
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->createGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1219
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    .line 1220
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeGroupBounds()V

    const/4 v0, 0x1

    .line 1221
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1223
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .locals 2

    .line 1571
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1574
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1575
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1576
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1578
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .locals 2

    .line 1717
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1718
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1719
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    .line 1721
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_1

    .line 1722
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1723
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1725
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    return-object v0
.end method

.method public getMeasure(I)I
    .locals 3

    .line 1747
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1748
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return v2

    .line 1754
    :cond_0
    invoke-direct {p0, p1, p1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1

    :cond_1
    const p1, 0x186a0

    .line 1751
    invoke-direct {p0, v2, p1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1

    .line 1757
    :cond_2
    invoke-direct {p0, v2, p1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1
.end method

.method public getTrailingMargins()[I
    .locals 2

    .line 1582
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1583
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1585
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1586
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1587
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1589
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/support/v7/widget/GridLayout$Arc;)[[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 9

    .line 1306
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1307
    new-array v1, v0, [[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1308
    new-array v0, v0, [I

    .line 1309
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    .line 1310
    iget-object v5, v5, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1312
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 1313
    aget v4, v0, v2

    new-array v4, v4, [Landroid/support/v7/widget/GridLayout$Arc;

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1316
    :cond_1
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1317
    array-length v2, p1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 1318
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1319
    aget-object v6, v1, v5

    aget v7, v0, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v0, v5

    aput-object v4, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public invalidateStructure()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1772
    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    const/4 v0, 0x0

    .line 1774
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1775
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1776
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1778
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1779
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1780
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1782
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    .line 1784
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    const/4 v0, 0x0

    .line 1785
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1787
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    return-void
.end method

.method public invalidateValues()V
    .locals 1

    const/4 v0, 0x0

    .line 1791
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1792
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1793
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1795
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1796
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1797
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1799
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    return-void
.end method

.method public isOrderPreserved()Z
    .locals 1

    .line 1178
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public layout(I)V
    .locals 0

    .line 1767
    invoke-direct {p0, p1, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1768
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    return-void
.end method

.method public setCount(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 1169
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v1, :cond_0

    const-string v1, "column"

    goto :goto_0

    :cond_0
    const-string v1, "row"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 1174
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    return-void
.end method

.method public setOrderPreserved(Z)V
    .locals 0

    .line 1182
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1183
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    return-void
.end method
