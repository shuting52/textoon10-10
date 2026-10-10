.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$2;
.super Ljava/lang/Object;
.source "preset_ui.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setShareAction(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Ljava/lang/Runnable;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$2;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 83
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$2;->val$action:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    const/4 v0, 0x0
.end method
