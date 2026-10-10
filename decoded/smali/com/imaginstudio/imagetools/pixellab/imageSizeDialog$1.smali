.class Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$1;
.super Ljava/lang/Object;
.source "imageSizeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 59
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 62
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-static {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;I)V

    return-void

    const/4 v0, 0x0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method
