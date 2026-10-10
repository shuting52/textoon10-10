.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;
.super Ljava/lang/Object;
.source "CustomTextMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->createItem(ILjava/lang/Runnable;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

.field final synthetic val$clickListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;->val$clickListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 70
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;->val$clickListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 71
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->dismiss()V

    return-void

    const/4 v0, 0x0
.end method
