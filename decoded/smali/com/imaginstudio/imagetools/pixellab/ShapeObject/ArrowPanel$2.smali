.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;
.super Ljava/lang/Object;
.source "ArrowPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fromBundle(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

.field final synthetic val$h:I

.field final synthetic val$positions:Ljava/util/ArrayList;

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;IILjava/util/ArrayList;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$w:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$h:I

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$positions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 371
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$w:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$h:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$positions:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;IILjava/util/ArrayList;)V

    .line 372
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    .line 373
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 374
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    .line 375
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    .line 376
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setVisibility(I)V

    return-void

    const/4 v0, 0x0
.end method
