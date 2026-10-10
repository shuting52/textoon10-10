.class final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

# instance fields
.field private final activity:Landroid/app/Activity;

# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;->activity:Landroid/app/Activity;
    return-void
.end method

# virtual methods
.method public onGlobalLayout()V
    .registers 3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;->activity:Landroid/app/Activity;
    if-eqz v0, :locale_layout_done
    const v1, 0x1020002
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :locale_layout_done
    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->localizeTree(Landroid/app/Activity;Landroid/view/View;)V
    :locale_layout_done
    return-void
.end method
