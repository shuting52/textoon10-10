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
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->onThemeLayout(Landroid/app/Activity;)V
    :locale_layout_done
    return-void
.end method
