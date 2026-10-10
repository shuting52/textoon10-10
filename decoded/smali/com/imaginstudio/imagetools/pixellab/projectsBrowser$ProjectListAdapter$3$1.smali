.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 280
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->listener:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->val$item:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    invoke-interface {p1, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;->projectDelete(Ljava/lang/String;Z)V

    .line 281
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->val$item:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->remove(Ljava/lang/Object;)V

    .line 282
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->notifyDataSetChanged()V

    return-void

    const/4 v0, 0x2
.end method
