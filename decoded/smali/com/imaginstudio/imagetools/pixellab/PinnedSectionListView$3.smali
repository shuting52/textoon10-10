.class Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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

    .line 344
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 346
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->recreatePinnedShadow()V

    return-void

    const/4 v1, 0x1
.end method
