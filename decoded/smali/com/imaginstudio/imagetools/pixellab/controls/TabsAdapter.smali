.class public Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TabsAdapter.java"


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;->fragments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 26
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    const/4 v1, 0x2

    .line 21
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1

    const/4 v1, 0x1
.end method
