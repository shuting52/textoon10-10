.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/gun0912/tedpermission/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$doOnGranted:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;->val$doOnGranted:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 329
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v0, 0x7f0c012f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    const/4 v0, 0x2
.end method

.method public onPermissionGranted()V
    .locals 2

    const/4 v1, 0x3

    .line 322
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;->val$doOnGranted:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 323
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;->val$doOnGranted:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method
