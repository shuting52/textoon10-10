.class Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;
.super Ljava/lang/Object;
.source "ItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->bind(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

.field final synthetic val$item:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;->val$item:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 41
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;)Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;->val$item:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;->onItemClick(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    return-void

    const/4 v1, 0x1
.end method
