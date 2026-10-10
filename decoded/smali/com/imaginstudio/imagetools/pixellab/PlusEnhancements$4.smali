.class public final synthetic Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;"
    method = "lambda$showReleaseNotes$3"
    proto = "(Landroid/app/Activity;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$4;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$4;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->lambda$showReleaseNotes$3(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
