.class public final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuAction"
.end annotation


# instance fields
.field private final action:I

.field private final activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->action:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_27

    .line 69
    :cond_d
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    # invokes: Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->showThemeMediaMenu(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->access$000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_26

    .line 70
    :cond_18
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->action:I

    .line 71
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;->activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 70
    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    # invokes: Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->showFxPresets(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->access$100(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_26

    .line 71
    :cond_23
    # invokes: Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->showReleaseNotes(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->access$200(Landroid/app/Activity;)V

    .line 72
    :goto_26
    return-void

    .line 68
    :cond_27
    :goto_27
    return-void
.end method
