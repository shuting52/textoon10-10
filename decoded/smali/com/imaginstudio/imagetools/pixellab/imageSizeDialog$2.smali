.class Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$2;
.super Ljava/lang/Object;
.source "imageSizeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 83
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->commitValue(Landroid/text/Editable;)I

    move-result p1

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    .line 84
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateAspect()V

    return-void

    const/4 v0, 0x2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method
