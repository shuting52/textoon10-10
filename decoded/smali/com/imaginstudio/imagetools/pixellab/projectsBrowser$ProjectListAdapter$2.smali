.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

.field final synthetic val$item:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 264
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->listener:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->listener:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;->projectShare(Ljava/io/File;)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method
