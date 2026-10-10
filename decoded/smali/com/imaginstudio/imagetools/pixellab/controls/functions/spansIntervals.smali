.class public Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
.super Ljava/lang/Object;
.source "spansIntervals.java"


# instance fields
.field intervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;"
        }
    .end annotation
.end field

.field tmpIntervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 38
    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->isInterval()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x3

    .line 39
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 40
    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v2

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->contains(Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    .line 41
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v4, 0x3

    .line 44
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    .line 45
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v4, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public addIntervalNoCheck(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .locals 2

    const/4 v1, 0x2

    .line 50
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    const/4 v1, 0x1
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x1

    .line 20
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    const/4 v1, 0x1
.end method

.method public copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 4

    const/4 v3, 0x0

    .line 94
    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    const/4 v3, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v3, 0x2

    .line 98
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    .line 99
    const/4 v3, 0x1

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->setIntervals(Ljava/util/List;)V

    return-object v1

    const/4 v1, 0x3
.end method

.method public getIntervals()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x3

    .line 76
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getLastAttr()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .locals 3

    const/4 v2, 0x2

    .line 32
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    return-object v0

    const/4 v0, 0x2
.end method

.method public getLastColor()I
    .locals 2

    const/4 v1, 0x1

    .line 35
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v0

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/high16 v0, -0x1000000

    :goto_0
    const/4 v1, 0x2

    return v0

    const/4 v1, 0x1
.end method

.method public isCoverAll(I)Z
    .locals 4

    const/4 v3, 0x0

    .line 83
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x2

    .line 84
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 85
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getLength()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v3, 0x2

    return v2

    :cond_0
    const/4 v3, 0x3

    const/4 p1, 0x0

    return p1

    const/4 v1, 0x3
.end method

.method public removeInterval(II)V
    .locals 7

    const/4 v6, 0x1

    .line 60
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    const/4 v6, 0x3

    :goto_0
    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 61
    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->isNoOverlapInterval(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v6, 0x3

    .line 62
    const/4 v6, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v6, 0x1

    .line 64
    const/4 v6, 0x2

    :cond_1
    const/4 v6, 0x3

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v2, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->removeInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Ljava/util/List;

    move-result-object v1

    .line 65
    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    const/4 v6, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    .line 66
    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->isInterval()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    .line 67
    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v5

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v6, 0x3

    .line 72
    const/4 v6, 0x0

    :cond_3
    const/4 v6, 0x1

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    .line 73
    const/4 v6, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    const/4 v0, 0x2
.end method

.method public setIntervals(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    return-void

    const/4 v0, 0x0
.end method

.method public updateEnds(II)V
    .locals 4

    const/4 v3, 0x3

    .line 53
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v3, 0x1

    .line 55
    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->setEnd(I)V

    goto :goto_0

    const/4 v3, 0x3

    :cond_1
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method
