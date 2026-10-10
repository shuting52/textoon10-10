.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;
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

.field final synthetic val$oldOuterGlowEnabled:Z

.field final synthetic val$oldShadowColor:I

.field final synthetic val$oldShadowDx:I

.field final synthetic val$oldShadowDy:I

.field final synthetic val$oldShadowEnabled:Z

.field final synthetic val$oldShadowRadius:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZZIIII)V
    .locals 0

    .line 4252
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowEnabled:Z

    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldOuterGlowEnabled:Z

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowRadius:I

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowDx:I

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowDy:I

    iput p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4255
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowEnabled:Z

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldOuterGlowEnabled:Z

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowRadius:I

    int-to-float v4, v0

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowDx:I

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowDy:I

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;->val$oldShadowColor:I

    invoke-virtual/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    return-void

    const/4 v0, 0x0
.end method
