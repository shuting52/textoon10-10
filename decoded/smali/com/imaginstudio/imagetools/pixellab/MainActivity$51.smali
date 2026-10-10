.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromAsset(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$presetDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 2487
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->val$presetDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2492
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2494
    const/4 v6, 0x3

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->val$presetDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/data.plab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 2495
    const/4 v6, 0x0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2496
    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x400

    .line 2497
    const/4 v6, 0x2

    new-array v4, v4, [C

    .line 2499
    const/4 v6, 0x3

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v6, 0x1

    .line 2500
    const/4 v6, 0x2

    invoke-virtual {v0, v4, v1, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    const/4 v6, 0x3

    .line 2503
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_1

    const/4 v6, 0x2

    :catch_0
    move-exception v0

    .line 2505
    const/4 v6, 0x3

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    const/4 v6, 0x0

    :catch_1
    move-exception v0

    .line 2509
    const/4 v6, 0x1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 2514
    const/4 v6, 0x2

    :goto_1
    const/4 v6, 0x3

    :try_start_3
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 2521
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->disable()V

    .line 2522
    const/4 v6, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->enableLayers(Z)V

    .line 2523
    const/4 v6, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->resetAll()V

    .line 2524
    const/4 v6, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2300(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 2525
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v2, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setScreenContent(Landroid/os/Bundle;)V

    .line 2526
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    .line 2527
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 2528
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    :cond_1
    const/4 v6, 0x2

    return-void

    :catch_2
    move-exception v0

    .line 2517
    const/4 v6, 0x3

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    const/4 v0, 0x2
.end method
