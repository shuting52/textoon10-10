.class Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;
.super Ljava/lang/Object;
.source "StartupSplash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/StartupSplash;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_17

    .line 86
    :catchall_16
    move-exception v0

    :cond_17
    :goto_17
    nop

    .line 87
    return-void
.end method
