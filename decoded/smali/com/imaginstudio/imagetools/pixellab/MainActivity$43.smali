.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->askResetGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$l:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1896
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;->val$l:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1899
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;->val$l:Landroid/widget/LinearLayout;

    const v0, 0x7f0800fd

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;->val$l:Landroid/widget/LinearLayout;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->startNewFromDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const/4 v0, 0x2
.end method
