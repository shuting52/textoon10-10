.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$4;
.super Ljava/lang/Object;
.source "PickFromBgDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 79
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dismiss()V

    return-void

    const/4 v0, 0x0
.end method
