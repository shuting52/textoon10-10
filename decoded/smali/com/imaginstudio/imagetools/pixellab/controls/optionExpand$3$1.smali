.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3$1;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 413
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;->continueCancel()V

    return-void

    const/4 v0, 0x0
.end method
