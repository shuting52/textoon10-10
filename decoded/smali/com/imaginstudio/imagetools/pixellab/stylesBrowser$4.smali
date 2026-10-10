.class Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;
.super Ljava/lang/Object;
.source "stylesBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefaultStyles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

.field final synthetic val$style:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;->val$style:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 157
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->styleEvent:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textstyles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;->val$style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;->loadStyle(Ljava/lang/String;Z)V

    .line 158
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->dismiss()V

    return-void

    const/4 v0, 0x2
.end method
