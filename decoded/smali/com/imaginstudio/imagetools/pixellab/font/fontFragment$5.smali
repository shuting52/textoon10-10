.class Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$5;
.super Ljava/lang/Object;
.source "fontFragment.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentInvalidated()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 199
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    return-void

    const/4 v1, 0x1
.end method
