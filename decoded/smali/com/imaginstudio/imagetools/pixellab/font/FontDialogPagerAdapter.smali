.class public Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FontDialogPagerAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private final refToText:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 20
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->refToText:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x3

    return v0

    const/4 v1, 0x1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    const/4 v1, 0x0

    .line 26
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->refToText:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->newInstance(ILcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    move-result-object p1

    return-object p1

    const/4 v1, 0x1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    const-string p1, "null"

    return-object p1

    .line 33
    const/4 v1, 0x0

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0c013e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 32
    const/4 v1, 0x1

    :pswitch_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0c0177

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 31
    const/4 v1, 0x2

    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0c0175

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x1
.end method
