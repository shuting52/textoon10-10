.class public Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
.super Ljava/lang/Object;
.source "interval.java"


# instance fields
.field private base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

.field private color:I

.field private font:Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    .line 13
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    .line 16
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    .line 17
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    return-void
.end method

.method public constructor <init>(IILcom/imaginstudio/imagetools/pixellab/font/customTypeface;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    .line 21
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    .line 22
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->font:Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    return-void
.end method


# virtual methods
.method copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 62
    const/4 v3, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    .line 63
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->setColor(I)V

    .line 64
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->setFont(Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public getBase()Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;
    .locals 2

    const/4 v1, 0x0

    .line 34
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getColor()I
    .locals 2

    const/4 v1, 0x3

    .line 37
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getEnd()I
    .locals 2

    const/4 v1, 0x2

    .line 27
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getFont()Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;
    .locals 2

    const/4 v1, 0x1

    .line 50
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->font:Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getStart()I
    .locals 2

    const/4 v1, 0x0

    .line 31
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public setBase(Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)V
    .locals 1

    const/4 v0, 0x3

    .line 41
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    return-void

    const/4 v0, 0x0
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x2

    .line 45
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    return-void

    const/4 v0, 0x0
.end method

.method public setFont(Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->font:Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    return-void

    const/4 v0, 0x0
.end method

.method public setStart(I)V
    .locals 2

    const/4 v1, 0x0

    .line 58
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->setStart(I)V

    return-void

    const/4 v1, 0x1
.end method
