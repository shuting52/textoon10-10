.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$1;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;->onFileSelected(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;Ljava/io/File;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 207
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$1;->val$file:Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->access$200(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Ljava/io/File;Z)V

    return-void

    const/4 v1, 0x1
.end method
