.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8$1;
.super Ljava/lang/Object;
.source "EraseBitmapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 232
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$8;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->undoAll()V

    return-void

    const/4 v0, 0x0
.end method
