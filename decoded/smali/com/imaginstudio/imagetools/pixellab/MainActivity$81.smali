.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showExportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 0

    .line 3347
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3350
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v2

    .line 3351
    const/4 v8, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v3

    .line 3352
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->getSelectedFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exportImage(IILandroid/graphics/Bitmap$CompressFormat;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;ZLjava/lang/String;)V

    return-void

    const/4 v0, 0x0
.end method
