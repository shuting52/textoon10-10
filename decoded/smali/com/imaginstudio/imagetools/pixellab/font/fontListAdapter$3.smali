.class Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;
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

    .line 140
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 143
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result p1

    if-ne p1, v0, :cond_4

    const/4 v4, 0x2

    .line 144
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v4, 0x2

    const-string v1, "last_fonts"

    goto :goto_0

    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    const-string v1, "last_userFonts"

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 147
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 148
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    const/4 v4, 0x0

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    const/4 v4, 0x2

    .line 150
    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    const/4 v4, 0x0

    .line 152
    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v4, 0x3

    const-string v0, "last_fonts"

    goto :goto_2

    const/4 v4, 0x0

    :cond_3
    const/4 v4, 0x1

    const-string v0, "last_userFonts"

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    const/4 v4, 0x3

    :cond_4
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$200(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    .line 156
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$200(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;->onFontClicked(Ljava/lang/String;)V

    :cond_5
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method
