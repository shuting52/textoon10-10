.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;
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

.field final synthetic val$OldEmbossAmbient:I

.field final synthetic val$OldEmbossBevel:I

.field final synthetic val$OldEmbossEnabled:Ljava/lang/Boolean;

.field final synthetic val$OldEmbossHardness:I

.field final synthetic val$OldEmbossIncludeStroke:Z

.field final synthetic val$OldEmbossIntensity:I

.field final synthetic val$OldEmbossLightAngle:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/Boolean;IIIIIZ)V
    .locals 0

    .line 4766
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossEnabled:Ljava/lang/Boolean;

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossLightAngle:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIntensity:I

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossAmbient:I

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossHardness:I

    iput p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossBevel:I

    iput-boolean p8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIncludeStroke:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4770
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossLightAngle:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIntensity:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossAmbient:I

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossHardness:I

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossBevel:I

    invoke-virtual/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    .line 4776
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIncludeStroke:Z

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmbossIncludeStroke(Z)V

    return-void

    const/4 v0, 0x0
.end method
