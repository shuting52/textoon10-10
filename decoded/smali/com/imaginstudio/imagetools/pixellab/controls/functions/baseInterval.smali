.class public Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;
.super Ljava/lang/Object;
.source "baseInterval.java"


# instance fields
.field end:I

.field start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    .line 12
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    return-void
.end method


# virtual methods
.method public contains(Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Z
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 22
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 v2, 0x2

    const/4 p1, 0x1

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    return p1

    const/4 v0, 0x2
.end method

.method public describe()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    .line 28
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method public getEnd()I
    .locals 2

    const/4 v1, 0x2

    .line 42
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    return v0

    const/4 v1, 0x1
.end method

.method public getLength()I
    .locals 3

    const/4 v2, 0x1

    .line 15
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public getStart()I
    .locals 2

    const/4 v1, 0x0

    .line 49
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    return v0

    const/4 v1, 0x1
.end method

.method intersect(Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;
    .locals 4

    const/4 v3, 0x3

    .line 39
    const/4 v3, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p1

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public isInterval()Z
    .locals 3

    const/4 v2, 0x2

    .line 18
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    return v0

    const/4 v0, 0x2
.end method

.method public isNoOverlapInterval(II)Z
    .locals 2

    const/4 v1, 0x1

    .line 25
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v0

    if-lt p2, v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/4 p1, 0x0

    goto :goto_1

    const/4 v1, 0x3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 p1, 0x1

    :goto_1
    const/4 v1, 0x2

    return p1

    const/4 v1, 0x1
.end method

.method public removeInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;",
            ")",
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 31
    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const/4 v4, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v4, 0x3

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    const/4 v0, 0x0
.end method

.method public setEnd(I)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    return-void

    const/4 v0, 0x0
.end method

.method public setStart(I)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    return-void

    const/4 v0, 0x0
.end method
