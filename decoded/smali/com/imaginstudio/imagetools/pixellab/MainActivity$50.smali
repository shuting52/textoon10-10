.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exportImage(IILandroid/graphics/Bitmap$CompressFormat;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$canvas:Landroid/graphics/Canvas;

.field final synthetic val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

.field final synthetic val$finalTextLayer:Landroid/graphics/Bitmap;

.field final synthetic val$format:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic val$pr:Landroid/app/ProgressDialog;

.field final synthetic val$share:Z

.field final synthetic val$shareTo:Ljava/lang/String;

.field final synthetic val$wantedOutputHeight:I

.field final synthetic val$wantedOutputWidth:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/graphics/Canvas;Landroid/app/ProgressDialog;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;Landroid/graphics/Bitmap$CompressFormat;ZLjava/lang/String;II)V
    .locals 0

    .line 2332
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$canvas:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$pr:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$finalTextLayer:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    iput-boolean p7, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$share:Z

    iput-object p8, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$shareTo:Ljava/lang/String;

    iput p9, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$wantedOutputWidth:I

    iput p10, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$wantedOutputHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2332
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->doAfterDone()V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$2100(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 2332
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->putInGalleryAndShare(Ljava/io/File;)V

    return-void

    const/4 v0, 0x0
.end method

.method private doAfterDone()V
    .locals 4

    const/4 v3, 0x3

    .line 2395
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$pr:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2200(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/app/ProgressDialog;)V

    .line 2396
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setRenderMode(ZF)V

    .line 2397
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2398
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    .line 2399
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->redrawAll()V

    return-void

    const/4 v1, 0x3
.end method

.method private getWhereToSave()Ljava/io/File;
    .locals 5

    const/4 v4, 0x2

    .line 2426
    const/4 v4, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v1, v2, :cond_0

    const/4 v4, 0x0

    const-string v1, ".png"

    goto :goto_0

    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    const-string v1, ".jpg"

    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2427
    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pixelLab"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2429
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2430
    const/4 v4, 0x2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    const/4 v0, 0x0
.end method

.method private putInGalleryAndShare(Ljava/io/File;)V
    .locals 7

    const/4 v6, 0x0

    .line 2402
    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v1, v2, :cond_0

    const/4 v6, 0x2

    const-string v1, "png"

    goto :goto_0

    const/4 v6, 0x3

    :cond_0
    const/4 v6, 0x0

    const-string v1, "jpg"

    :goto_0
    const/4 v6, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2403
    const/4 v6, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v5

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 2404
    const/4 v6, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$share:Z

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$shareTo:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v6, 0x1

    .line 2405
    const/4 v6, 0x2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x80000

    .line 2406
    const/4 v6, 0x3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2407
    const/4 v6, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2408
    const/4 v6, 0x1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.extra.STREAM"

    .line 2409
    const/4 v6, 0x2

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2410
    const/4 v6, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c00e5

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    const/4 v6, 0x0

    .line 2411
    const/4 v6, 0x1

    :cond_1
    const/4 v6, 0x2

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$share:Z

    if-eqz v1, :cond_2

    const/4 v6, 0x3

    .line 2412
    const/4 v6, 0x0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 2413
    const/4 v6, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2414
    const/4 v6, 0x2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    const-string v2, "made using PixelLab"

    .line 2415
    const/4 v6, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 2416
    const/4 v6, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2417
    const/4 v6, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$shareTo:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    const/4 v6, 0x2

    :try_start_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v6, 0x3

    .line 2421
    const/4 v6, 0x0

    :catch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :cond_2
    const/4 v6, 0x1

    :goto_1
    const/4 v6, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method private saveBitmapToStorage(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v0, 0x64

    .line 2435
    const/4 v5, 0x1

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2436
    const/4 v5, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$wantedOutputWidth:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$wantedOutputHeight:I

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v5, 0x3

    .line 2438
    const/4 v5, 0x0

    :catch_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2439
    const/4 v5, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_0
    const/4 v5, 0x2

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public doOnBackground()V
    .locals 4

    const/4 v3, 0x0

    .line 2336
    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->draw(Landroid/graphics/Canvas;)V

    .line 2337
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x3

    .line 2338
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->draw(Landroid/graphics/Canvas;)V

    .line 2340
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x3

    .line 2341
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->draw(Landroid/graphics/Canvas;)V

    .line 2343
    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->draw(Landroid/graphics/Canvas;)V

    .line 2344
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    .line 2345
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2361
    const/4 v3, 0x2

    :cond_2
    const/4 v3, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;)V

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    const/4 v0, 0x1

    .line 2369
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->getWhereToSave()Ljava/io/File;

    move-result-object v1

    .line 2371
    const/4 v3, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$finalTextLayer:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->saveBitmapToStorage(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    const/4 v3, 0x2

    :catch_0
    move-exception v0

    .line 2373
    const/4 v3, 0x3

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 2378
    const/4 v3, 0x0

    :goto_0
    const/4 v3, 0x1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;ZLjava/io/File;)V

    invoke-static {v2}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void

    :catch_1
    move-exception v0

    .line 2348
    const/4 v3, 0x2

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 2349
    const/4 v3, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;)V

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void

    const/4 v1, 0x3
.end method
