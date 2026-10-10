.class Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;
.super Ljava/lang/Object;
.source "ItemHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 44
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 48
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;)Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;->onItemCheck(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    goto :goto_0

    const/4 v0, 0x3

    .line 50
    const/4 v0, 0x0

    :cond_0
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;)Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;->onItemUnCheck(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    :goto_0
    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
