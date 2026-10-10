.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->promptSaveProject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$nameField:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;->val$nameField:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1327
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;->val$nameField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1328
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v1, 0x1

    const-string p2, "autosave"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v1, 0x2

    .line 1329
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPreset(Ljava/lang/String;)V

    goto :goto_0

    const/4 v1, 0x0

    .line 1331
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v0, 0x7f0c00ee

    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method
