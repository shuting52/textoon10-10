.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showProjectBrowser(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$pickPLP:Z


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)V
    .locals 0

    .line 2891
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;->val$pickPLP:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadProject(Ljava/lang/String;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2894
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromFile(Ljava/lang/String;Z)V

    .line 2895
    const/4 v2, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;->val$pickPLP:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 2896
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->presetsChanged()V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public removeProject(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    .line 2902
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->removePreset(Ljava/lang/String;)V

    .line 2903
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->presetsChanged()V

    return-void

    const/4 v1, 0x1
.end method
