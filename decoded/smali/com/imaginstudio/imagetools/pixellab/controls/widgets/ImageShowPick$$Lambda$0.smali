.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

.field private final arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$$Lambda$0;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$$Lambda$0;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$$Lambda$0;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$$Lambda$0;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->lambda$selected$0$ImageShowPick(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    return-void

    const/4 v0, 0x2
.end method
