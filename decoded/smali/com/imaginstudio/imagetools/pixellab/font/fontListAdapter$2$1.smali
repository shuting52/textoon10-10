.class Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;
.super Ljava/lang/Object;
.source "fontListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 123
    const/4 v1, 0x3

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 125
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 126
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00d6

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 127
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->remove(Ljava/lang/Object;)V

    .line 128
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    const/4 v1, 0x2

    .line 130
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00d5

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method
