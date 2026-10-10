.class public Lcom/imaginstudio/imagetools/pixellab/controls/TopBar;
.super Landroid/widget/LinearLayout;
.source "TopBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/TopBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/TopBar;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 16
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/TopBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a006c

    invoke-static {v0, v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/TopBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void

    const/4 v0, 0x2
.end method
