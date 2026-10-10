.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;
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

    .line 3355
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const-string v0, ""

    .line 3360
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v8, 0x0

    move-object v7, v0

    goto :goto_1

    const/4 v8, 0x1

    .line 3374
    const/4 v8, 0x2

    :pswitch_0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->packageName_whatsapp:Ljava/lang/String;

    goto :goto_0

    const/4 v8, 0x3

    .line 3365
    const/4 v8, 0x0

    :pswitch_1
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->packageName_twitter:Ljava/lang/String;

    goto :goto_0

    const/4 v8, 0x1

    .line 3377
    const/4 v8, 0x2

    :pswitch_2
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->packageName_tumblr:Ljava/lang/String;

    goto :goto_0

    const/4 v8, 0x3

    .line 3371
    const/4 v8, 0x0

    :pswitch_3
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->packageName_instagram:Ljava/lang/String;

    goto :goto_0

    const/4 v8, 0x1

    .line 3368
    const/4 v8, 0x2

    :pswitch_4
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->packageName_gplus:Ljava/lang/String;

    goto :goto_0

    const/4 v8, 0x3

    .line 3362
    const/4 v8, 0x0

    :pswitch_5
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->packageName_facebook:Ljava/lang/String;

    goto :goto_0

    const/4 v8, 0x1

    .line 3380
    const/4 v8, 0x2

    :pswitch_6
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->packageName_dropbox:Ljava/lang/String;

    goto :goto_0

    const/4 v8, 0x3

    :goto_1
    const/4 v8, 0x0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3385
    const/4 v8, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v7, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    :catch_0
    if-nez p1, :cond_0

    const/4 v8, 0x2

    .line 3391
    const/4 v8, 0x3

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3392
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c00b7

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3393
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c015a

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3394
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c00bd

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3400
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3401
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    const/4 v8, 0x1

    .line 3403
    const/4 v8, 0x2

    :cond_0
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v2

    .line 3404
    const/4 v8, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v3

    .line 3405
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->getSelectedFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exportImage(IILandroid/graphics/Bitmap$CompressFormat;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;ZLjava/lang/String;)V

    :goto_2
    const/4 v8, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0801b0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method
