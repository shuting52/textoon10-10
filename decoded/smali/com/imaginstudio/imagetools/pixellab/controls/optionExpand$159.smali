.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$oldInnerShadowColor:I

.field final synthetic val$oldInnerShadowDx:I

.field final synthetic val$oldInnerShadowDy:I

.field final synthetic val$oldInnerShadowEnabled:Z

.field final synthetic val$oldInnerShadowRadius:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V
    .locals 0

    .line 3115
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowEnabled:Z

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowRadius:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowDx:I

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowDy:I

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3118
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowEnabled:Z

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowRadius:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowDx:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowDy:I

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;->val$oldInnerShadowColor:I

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setInnerShadow(ZIIII)V

    return-void

    const/4 v1, 0x3
.end method
