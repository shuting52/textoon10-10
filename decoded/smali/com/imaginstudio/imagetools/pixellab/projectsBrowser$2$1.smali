.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 106
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    iput p1, p2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->currentSort:I

    .line 107
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$1;)V

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->sort(Ljava/util/Comparator;)V

    .line 108
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->notifyDataSetChanged()V

    return-void

    const/4 v0, 0x2
.end method
