.class Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 133
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->recreatePinnedShadow()V

    return-void

    const/4 v1, 0x1
.end method

.method public onInvalidated()V
    .locals 2

    const/4 v1, 0x3

    .line 136
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->recreatePinnedShadow()V

    return-void

    const/4 v1, 0x1
.end method
