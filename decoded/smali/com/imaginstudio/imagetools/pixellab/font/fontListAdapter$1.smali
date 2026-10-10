.class Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;
.super Ljava/lang/Object;
.source "fontListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

.field final synthetic val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 86
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$000(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V

    return-void

    const/4 v1, 0x1
.end method
