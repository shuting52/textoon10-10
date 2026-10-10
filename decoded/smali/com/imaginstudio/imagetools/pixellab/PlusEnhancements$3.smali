.class public final synthetic Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;"
    method = "lambda$showThemeMediaMenu$0"
    proto = "(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$3;->f$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$3;->f$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->lambda$showThemeMediaMenu$0(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
