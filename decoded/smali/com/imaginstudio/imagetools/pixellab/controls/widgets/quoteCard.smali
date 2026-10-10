.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;
.super Landroid/widget/RelativeLayout;
.source "quoteCard.java"


# instance fields
.field quoteHolder:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0a005a

    invoke-static {p1, v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f08016e

    .line 17
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->quoteHolder:Landroid/widget/TextView;

    .line 18
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->quoteHolder:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public setQuote(Ljava/lang/String;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 24
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;->quoteHolder:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x1
.end method
